CLASS zlaw_cl_bp_xl_user DEFINITION PUBLIC ABSTRACT FINAL FOR BEHAVIOR OF zlaw_i_xl_user.

  PUBLIC SECTION.
    TYPES:
      BEGIN OF gty_gr_xl,
        po_number       TYPE string,
        po_item         TYPE string,
        gr_quantity     TYPE string,
        unit_of_measure TYPE string,
        site_id         TYPE string,
        header_text     TYPE string,
        line_number     TYPE string, "Internal Use during Upload
        line_id         TYPE string, "Internal Use during Upload
      END OF gty_gr_xl.

ENDCLASS.

CLASS zlaw_cl_bp_xl_user IMPLEMENTATION.
ENDCLASS.
