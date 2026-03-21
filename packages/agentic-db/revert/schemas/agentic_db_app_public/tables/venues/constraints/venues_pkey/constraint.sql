-- Revert: schemas/agentic_db_app_public/tables/venues/constraints/venues_pkey/constraint


ALTER TABLE agentic_db_app_public.venues 
  DROP CONSTRAINT venues_pkey;


