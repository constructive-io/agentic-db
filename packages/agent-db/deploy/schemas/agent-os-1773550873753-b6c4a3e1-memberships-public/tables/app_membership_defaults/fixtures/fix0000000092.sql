-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/fixtures/fix0000000092
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/table


INSERT INTO "agent-os-1773550873753-b6c4a3e1-memberships-public".app_membership_defaults (
  is_verified,
  is_approved
)
VALUES
  ('f'::boolean, 'f'::boolean);

