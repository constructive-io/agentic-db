-- Revert: schemas/agent_db_app_public/tables/trips/constraints/trips_pkey/constraint


ALTER TABLE "agent_db_app_public".trips 
  DROP CONSTRAINT trips_pkey;


