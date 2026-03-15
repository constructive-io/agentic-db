-- Revert: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitstr/alterations/alt0000001736


ALTER TABLE "agent_db_permissions_public".app_permissions 
  ALTER COLUMN bitstr DROP NOT NULL;


