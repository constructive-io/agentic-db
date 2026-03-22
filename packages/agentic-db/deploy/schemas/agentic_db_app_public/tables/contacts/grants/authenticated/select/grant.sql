-- Deploy: schemas/agentic_db_app_public/tables/contacts/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/alterations/alt0000005531


GRANT SELECT ON agentic_db_app_public.contacts TO authenticated;

