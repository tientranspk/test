CREATE TABLE [dbo].[projects_products] (
    [ID]               INT            IDENTITY (1, 1) NOT NULL,
    [ID_product]       NVARCHAR (200) NOT NULL,
    [ID_project]       NVARCHAR (200) NULL,
    [amount_expected]  INT            NULL,
    [units]            NVARCHAR (45)  NULL,
    [target_price_cus] INT            NULL,
    [pro_notes]        NVARCHAR (45)  NULL,
    [wecare_price]     INT            NULL,
    [expected_sup]     NVARCHAR (45)  NULL,
    [avai_provider]    NVARCHAR (45)  NULL,
    [dasp_actived]     SMALLINT       NULL,
    [created]          DATETIME       NULL,
    [updated]          DATETIME       NULL,
    [deleted]          SMALLINT       NULL,
    CONSTRAINT [PK_projects_products] PRIMARY KEY CLUSTERED ([ID] ASC)
);

