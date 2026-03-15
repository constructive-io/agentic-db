-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/columns/updated_at/alterations/alt0000000145


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_owner_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


