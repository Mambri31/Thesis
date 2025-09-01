%% Finds which vector as more points whitin a given tolerance range

function best=signalTOL_analyzer(qh,qk,rangeK,rangeB,tolerance,t_phase,cycle_duration)


qh=cellfun(@rad2deg,qh,'UniformOutput',false);
qk=cellfun(@rad2deg,qk,'UniformOutput',false);

nb=length(rangeB);
nk=length(rangeK);

points=zeros(nb,nk);


h_offset=29.1;
k_offset=24.127;
gen_Traj=mov_exo(cycle_duration,h_offset,k_offset);


for k=1:nk
    for b=1:nb
        
        qhi=qh{b,k};
        qki=qk{b,k};
        t=linspace(t_phase(1),t_phase(2),length(qhi));
      
        qh_ref=gen_Traj.get_hip_angle(t)';
        qk_ref=gen_Traj.get_knee_angle(t)';
        
        vec1=qh_ref-qhi;
        vec2=qk_ref-qki;

        indx1=find(vec1(:)<=max(tolerance) & vec1(:)>=min(tolerance));
        indx2=find(vec2(:)<=max(tolerance) & vec2(:)>=min(tolerance));
        points(b,k)=(length(indx1)+0.5*length(indx2))/(length(vec2)+length(vec1))*100;
    end
end


% Find the best combination
[~,idx]=max(points(:));


[bestB, bestK] = ind2sub(size(points), idx);
best=struct();

% Gives back the best result
best.B = rangeB(bestB);
best.K = rangeK(bestK);



end
