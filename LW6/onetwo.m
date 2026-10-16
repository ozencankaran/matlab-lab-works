function varargout = onetwo(in)
varargout{1} = sin(in);
if nargout == 2
    varargout{2} = cos(in);
end
end
