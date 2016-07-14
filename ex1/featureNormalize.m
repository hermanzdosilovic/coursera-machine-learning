function [X_norm, mu, sigma] = featureNormalize(X)
  X_norm = X;
  mu = zeros(1, size(X, 2));
  sigma = zeros(1, size(X, 2));

  for i = 1:size(X, 2)
    xi = X(:, i);
    sigma(i) = std(xi);
    mu(i) = mean(xi);
    X_norm(:, i) .-= mu(i);
    X_norm(:, i) ./= sigma(i);
  end
end
