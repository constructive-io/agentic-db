-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/fixtures/fix0000002856
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table


INSERT INTO agentic_db_memberships_public.membership_types (
  id,
  name,
  description,
  prefix
)
VALUES
  (1, 'App Member', 'Memberships to the app.', 'app'),
  (2, 'Organization Member', 'Membership to an organization.', 'membership'),
  (3, 'Group Member', 'User''s membership to a group.', 'group');

