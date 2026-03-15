-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/fixtures/fix0000000024
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/table


INSERT INTO "agent-os-1773550873753-b6c4a3e1-memberships-public".membership_types (
  id,
  name,
  description,
  prefix
)
VALUES
  (1, 'App Member', 'Memberships to the app.', 'app'),
  (2, 'Organization Member', 'Membership to an organization.', 'membership'),
  (3, 'Group Member', 'User''s membership to a group.', 'group');

