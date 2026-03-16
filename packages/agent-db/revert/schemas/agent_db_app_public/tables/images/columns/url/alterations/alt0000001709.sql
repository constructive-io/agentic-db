-- Revert: schemas/agent_db_app_public/tables/images/columns/url/alterations/alt0000001709


ALTER TABLE "agent_db_app_public".images 
  ALTER COLUMN url DROP NOT NULL;


