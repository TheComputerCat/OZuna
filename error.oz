functor
import
    System
    Application 
define
    local AnError X in
        {System.showInfo 'A nice message'}
        proc {AnError X}
	    {System.showInfo 'An horrible error'}
            {Application.exit 1}
        end 
        raise {AnError} end
    end
end
