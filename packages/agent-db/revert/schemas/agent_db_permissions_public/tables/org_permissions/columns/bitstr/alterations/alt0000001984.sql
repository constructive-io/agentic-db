-- Revert: schemas/agent_db_permissions_public/tables/org_permissions/columns/bitstr/alterations/alt0000001984


ALTER TABLE "agent_db_permissions_public".org_permissions 
  ALTER COLUMN bitstr DROP NOT NULL;


