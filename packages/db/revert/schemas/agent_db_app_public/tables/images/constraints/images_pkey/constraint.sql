-- Revert: schemas/agent_db_app_public/tables/images/constraints/images_pkey/constraint


ALTER TABLE "agent_db_app_public".images 
  DROP CONSTRAINT images_pkey;


