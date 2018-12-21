function closeGUI_SanesLab(hObject)
%closeGUI_SanesLab(hObject)
%
%Custom function for SanesLab epsych
%
%This function closes the GUI window
%
%Input:
%   hObject: handle to GUI figure
%
%Written by ML Caras 7.28.2016. Updated 4.21.17.


global RUNTIME PUMPHANDLE GLogFID

%Check to see if user has already pressed the master stop button
if ~isempty(RUNTIME)
    
    if RUNTIME.UseOpenEx
        h = findobj('Type','figure','-and','Name','ODevFig');
    else
        h = findobj('Type','figure','-and','Name','RPfig');
    end
    
    %If not, prompt user to press STOP
    if ~isempty(h)
        beep
        warnstring = 'You must press STOP before closing this window';
        warnhandle = warndlg(warnstring,'Close warning'); %#ok<*NASGU>
    else
        if ~isempty(PUMPHANDLE)
            %Close COM port to PUMP
            fclose(PUMPHANDLE);
            delete(PUMPHANDLE);
        end
        
        %Clean up global variables
        clearvars -global PUMPHANDLE CONSEC_NOGOS SHOCK_ON AUTOSHOCK
        clearvars -global GUI_HANDLES ROVED_PARAMS USERDATA
        
        
        %Clean up persistent variables in trial function
        clear TrialFcn_SanesLab
        
        %Delete figure
        delete(hObject)
        
    end
    
else
    
    if ~isempty(PUMPHANDLE)
        %Close COM port to PUMP
        fclose(PUMPHANDLE);
        delete(PUMPHANDLE);
    end
    
    %Close log files
    if ~isempty(GLogFID) && GLogFID >2
        fclose(GLogFID);
    end
    
    
    %Clean up global variables
    clearvars -global PUMPHANDLE CONSEC_NOGOS GLogFID GVerbosity
    clearvars -global GUI_HANDLES ROVED_PARAMS USERDATA
    
    %Clean up persistent variables in trial function
    clear TrialFcn_SanesLab
    
    %Delete figure
    delete(hObject)
    
end