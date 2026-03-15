-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/profile_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  DROP COLUMN profile_id RESTRICT;


