-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_banned/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  DROP COLUMN is_banned RESTRICT;


