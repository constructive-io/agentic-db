-- Revert: schemas/agent_db_permissions_public/tables/org_permissions/columns/id/column


ALTER TABLE "agent_db_permissions_public".org_permissions 
  DROP COLUMN id RESTRICT;


