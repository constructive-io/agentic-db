-- Deploy: schemas/agentic_db_app_public/tables/venue_images/alterations/alt0000015379
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_app_public.venue_images IS E'@behavior +manyToMany';

