-- Deploy: schemas/agentic_db_app_public/tables/contact_images/alterations/alt0000003875
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_main_image_id_idx


COMMENT ON TABLE agentic_db_app_public.contact_images IS E'@behavior +manyToMany';

