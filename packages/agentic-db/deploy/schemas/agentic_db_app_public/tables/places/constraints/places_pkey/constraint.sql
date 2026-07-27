-- Deploy: schemas/agentic_db_app_public/tables/places/constraints/places_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table


ALTER TABLE agentic_db_app_public.places 
  ADD CONSTRAINT places_pkey PRIMARY KEY (id);

