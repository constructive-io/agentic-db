-- Deploy: schemas/agentic_db_app_public/tables/contact_images/constraints/contact_images_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table


ALTER TABLE "agentic_db_app_public".contact_images 
  ADD CONSTRAINT contact_images_pkey PRIMARY KEY (id);

