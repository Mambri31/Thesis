%% Returns (K,B) combination that minimize the mean absolut error

function best=signalMAE_analyzer(qh,qk,rangeK,rangeB,t_phase,cycle_duration)

nb=length(rangeB);
nk=length(rangeK);

MAE=zeros(nb,nk);

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
        
        
        % Find the RMS
        mae_qh=mean(abs(qh_ref(:)-qhi(:)));
        mae_qk=mean(abs(qk_ref(:)-qki(:)));
        
        MAE(b,k)=mae_qh+0.5*mae_qk;
      end
end

[~,idx]=min(MAE(:));
[bestB,bestK]=ind2sub(size(MAE),idx);


best=struct();

% Returns the best combination
best.B=rangeB(bestB);
best.K=rangeK(bestK);



end
