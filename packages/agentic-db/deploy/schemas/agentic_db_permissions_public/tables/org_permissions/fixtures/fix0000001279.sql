-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/fixtures/fix0000001279
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table


INSERT INTO "agentic_db_permissions_public".org_permissions (
  bitnum,
  name,
  description
)
VALUES
  (1, 'admin_members', 'Manage members of the organization.'),
  (2, 'create_invites', 'Create invites for the organization.'),
  (3, 'admin_invites', 'Manage invites of the organization.'),
  (4, 'send_approved_invites', 'Invites sent by this user are pre-approved.'),
  (5, 'create_organizations', 'Create organizations within the organization.'),
  (6, 'create_groups', 'Create groups within the organization.'),
  (7, 'admin_limits', 'Manage limits within the organization.'),
  (8, 'admin_permissions', 'Manage permissions within the organization.'),
  (9, 'admin_levels', 'Manage levels of the organization.'),
  (10, 'admin_account', 'Manage account of the organization.');

