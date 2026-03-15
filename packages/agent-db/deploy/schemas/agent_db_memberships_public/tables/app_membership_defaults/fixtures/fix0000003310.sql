-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/fixtures/fix0000003310
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


INSERT INTO "agent_db_memberships_public".app_membership_defaults (
  is_verified,
  is_approved
)
VALUES
  ('f'::boolean, 'f'::boolean);

