-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/profile_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
  DROP COLUMN profile_id RESTRICT;


