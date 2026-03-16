-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/id/alterations/alt0000001339
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/sync_state/column



ALTER TABLE "agentic_db_app_public".messages 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

