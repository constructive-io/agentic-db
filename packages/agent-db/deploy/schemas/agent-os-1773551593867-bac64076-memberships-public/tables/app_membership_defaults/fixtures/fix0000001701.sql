-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/fixtures/fix0000001701
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_membership_defaults/table


INSERT INTO "agent-os-1773551593867-bac64076-memberships-public".app_membership_defaults (
  is_verified,
  is_approved
)
VALUES
  ('f'::boolean, 'f'::boolean);

