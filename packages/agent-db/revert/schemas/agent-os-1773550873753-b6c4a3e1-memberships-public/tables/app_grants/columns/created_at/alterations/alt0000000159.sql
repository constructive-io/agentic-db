-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/columns/created_at/alterations/alt0000000159


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants 
  ALTER COLUMN created_at DROP DEFAULT;


