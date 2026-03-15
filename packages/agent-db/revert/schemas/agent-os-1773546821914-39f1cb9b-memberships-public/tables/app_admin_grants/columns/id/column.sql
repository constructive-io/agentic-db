-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants 
  DROP COLUMN id RESTRICT;


