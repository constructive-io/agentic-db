-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/constraints/hiking_trails_pkey/constraint


ALTER TABLE "agentic_db_app_public".hiking_trails 
  DROP CONSTRAINT hiking_trails_pkey;


