-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/fixtures/fix0000001728
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table


INSERT INTO "agent_db_memberships_public".membership_types (
  id,
  name,
  description,
  prefix
)
VALUES
  (1, 'App Member', 'Memberships to the app.', 'app'),
  (2, 'Organization Member', 'Membership to an organization.', 'membership'),
  (3, 'Group Member', 'User''s membership to a group.', 'group');

