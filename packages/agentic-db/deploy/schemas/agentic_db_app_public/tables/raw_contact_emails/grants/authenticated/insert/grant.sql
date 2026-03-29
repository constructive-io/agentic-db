-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_status_idx


GRANT INSERT ON agentic_db_app_public.raw_contact_emails TO authenticated;

