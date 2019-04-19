function divs = max_affine_bregman(X1, X2, params)

%% predicting divergences
phi_X1 = max(params.phi' + X1*params.grad', [], 2);
[phi_X2, index] = max(params.phi' + X2*params.grad', [], 2);
grad_X2 = params.grad(index,:);
divs = phi_X1-phi_X2' - X1*grad_X2' + dot(X2, grad_X2, 2)';

