-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table


GRANT SELECT ON "agentic_db_app_public".deals_chunks TO authenticated;

