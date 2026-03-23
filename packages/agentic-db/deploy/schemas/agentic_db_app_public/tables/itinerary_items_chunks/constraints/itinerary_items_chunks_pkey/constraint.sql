-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items_chunks/constraints/itinerary_items_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.itinerary_items_chunks 
  ADD CONSTRAINT itinerary_items_chunks_pkey PRIMARY KEY (id);

