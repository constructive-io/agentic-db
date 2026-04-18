-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/alterations/alt0000000898
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_app_public.deal_contacts IS E'@behavior +manyToMany';

