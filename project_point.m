function p_img = project_point(p, f)
A = [f 0 0 0
	 0 f 0 0
	 0 0 1 0];
p_proj = A * [p 1]';
p_img = [p_proj(1)/p_proj(3) p_proj(2)/p_proj(3)];
end

