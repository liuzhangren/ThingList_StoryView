import styl from 'cfx.style'

style = 
  editable_cell:
    position: 'relative'
    ":hover":
      "editable_cell_icon":
        display: 'inline-block !important'
  
  editable_cell_input_wrapper:
    paddingRight: '24px' 
  editable_cell_text_wrapper:
    paddingRight: '24px'
    padding: '5px 24px 5px 5px'
    

  editable_cell_icon:
    position: 'absolute'
    right: 0
    bottom: 5
    width: 20
    cursor: 'pointer'
    lineHeight: '18px !important'
    # display: 'none !important'
    '&:hover':
      color: '#108ee9'
    

  editable_cell_icon_check:
    position: 'absolute'
    right: '0'
    width: '20px'
    cursor: 'pointer'
    lineHeight: '28px'
    '&:hover':
      color: '#108ee9' 

  editable_add_btn:
    marginBottom: '8px'

export default styl style
,
  userGlamor: true