-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table


COMMENT ON TABLE agentic_db_app_public.contact_relationships IS E'@behavior +manyToMany';

