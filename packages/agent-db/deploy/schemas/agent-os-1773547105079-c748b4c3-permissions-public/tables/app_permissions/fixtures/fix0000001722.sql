-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/fixtures/fix0000001722
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/table


INSERT INTO "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions (
  bitnum,
  name,
  description
)
VALUES
  (1, 'admin_members', 'Manage members of the app.'),
  (2, 'create_invites', 'Create invites for the app.'),
  (3, 'admin_invites', 'Approve invites of the app.'),
  (4, 'send_approved_invites', 'Invites sent by this user are pre-approved.'),
  (5, 'create_organizations', 'Create organizations within the app.'),
  (6, 'admin_limits', 'Manage limits within the app.'),
  (7, 'admin_permissions', 'Manage permissions within the app.'),
  (8, 'admin_levels', 'Manage levels of the app.');

