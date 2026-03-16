-- Revert: schemas/agent_db_app_public/tables/contacts/columns/location/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN location RESTRICT;


