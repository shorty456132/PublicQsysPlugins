# Dropdown Selector
used mainly for source selection and routing. you can tie the 'SelectorValue' control pin to a control router for easy routing
## properties
  - SelectionAmount
    - Set the amount of selections you want for the dropdown/combo box. Valid range is between 0 and 254
  - DefaultSelection
    - Set the selection to use as a default on start up
## Dropdown Functions
### SelectionName
- while in emulation or live, you can change or add names that will appear in the dropdown. 
- There is a selection button associated with each Selection Name
### Selection  
- Momentary Button that can be triggered from a UCI or from an input pin
  - Plugin uses these buttons similar to a selector where only 1 button can be high at a time
## Status
 - All status components are read only
### Selection Text Box
  - print out of the currently selected source
### Selection Value
  - outputs the value of the currently selected source
## Version History
### V2.0.0
  - Added setup page
    - Setup page will contain a dropdown of all routers that have named components
    - If the setup page has defined a router, the plugin will control that router - if selected.
    - If the setup page has not defined a router, the plugin pins must be used. 
  - Known issues
    - Doesnt work with USB routers
  - Need to implement
    - Create pages based off properties. each page contains its own router component and dropdown
  
  
   