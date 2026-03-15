-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_grants 
  DROP COLUMN created_at RESTRICT;


