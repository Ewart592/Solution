--%CSTD===========================================================*
     --* Application. : SURPIE     Surplus Inventory                  *
     --* Component. . : SURINVM                       Type: TABLE     *
     --*===============================================================*
     --* Sub-system . :                                                *
     --* Function . . :                                                *
     --* Sub-function :                                                *
     --*%S=============================================================*
     --* Description of functions:                                     *
     --*                                                               *
     --*                                                               *
     --*                                                               *
     --*%E=============================================================*
     --* AUTHOR:    EWART      01/09/2026 00:00  26.09.01              *
     --* MODIFS: ** EWART      01/09/2026 00:00  26.09.01 MR 01/  01   *
     --*           Surplus Inventory Customer table                   *
     --%ECSTD==========================================================*
    CREATE TABLE SURINVM (
     SUR_STS      CHAR(1)        NOT NULL,      -- Status: A=Active, D=Deactivated
    SUR_ID       NUMERIC(6,0)   NOT NULL,      -- Primary key, unique record identifier
    SUR_NAME     VARCHAR(50)    NOT NULL,      -- Customer's name
    SUR_ADDR     VARCHAR(250)   DEFAULT '',    -- Customer's address
    SUR_TELNUM   CHAR(14)       DEFAULT '',    -- Customer's telephone number
    SUR_EMAIL    CHAR(100)      DEFAULT '',    -- Customer's email
    SUR_TYPE     CHAR(1)        NOT NULL,      -- Type: I=Internal, E=External
    SUR_TYPDES   CHAR(15)       DEFAULT '',    -- Description for SUR_TYPE
    SUR_EXID     NUMERIC(10,0)  DEFAULT 0,     -- External ID per SUR_TYPDES
    SUR_USER     VARCHAR(18)    NOT NULL,      -- User creating the record
    SUR_DATE     DECIMAL(8,0)   NOT NULL,      -- Date record was created
    SUR_CUSER    VARCHAR(18)    DEFAULT '',    -- User making changes to record
    SUR_CDATE    DECIMAL(8,0)   DEFAULT 0,     -- Date record was altered

    PRIMARY KEY (SUR_ID),

    CONSTRAINT CHK_SURSTS  CHECK (SUR_STS  IN ('A', 'D')),
    CONSTRAINT CHK_SURTYPE CHECK (SUR_TYPE IN ('I', 'E'))
);

LABEL ON TABLE SURINVM IS 'Surplus Inventory Customer Table';
