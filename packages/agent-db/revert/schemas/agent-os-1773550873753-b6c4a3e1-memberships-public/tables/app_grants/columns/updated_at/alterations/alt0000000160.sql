-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/updated_at/alterations/alt0000000160


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


