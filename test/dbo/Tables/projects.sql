CREATE TABLE [dbo].[projects] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [project_id]        NVARCHAR (200) NULL,
    [cus_name]          NVARCHAR (200) NULL,
    [sales_person]      NVARCHAR (45)  NULL,
    [status]            INT            NULL,
    [group_name]        NVARCHAR (200) NULL,
    [val_expected]      NVARCHAR (200) NULL,
    [order_description] NVARCHAR (200) NULL,
    [received_date]     DATETIME       NULL,
    [action_did]        NVARCHAR (200) NULL,
    [next_action]       NVARCHAR (200) NULL,
    [update_summary]    NVARCHAR (500) NULL,
    [next_day]          DATETIME       NULL,
    [image]             NVARCHAR (500) NULL,
    [user_init]         INT            NULL,
    [actived]           SMALLINT       NULL,
    [created]           DATETIME       NULL,
    [updated]           DATETIME       NULL,
    [deleted]           SMALLINT       NULL,
    CONSTRAINT [PK_projects] PRIMARY KEY CLUSTERED ([Id] ASC)
);

