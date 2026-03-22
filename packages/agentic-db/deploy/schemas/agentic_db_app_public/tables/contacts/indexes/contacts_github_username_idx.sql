-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_github_username_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/github_username/column
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_twitter_handle_idx


CREATE INDEX contacts_github_username_idx ON agentic_db_app_public.contacts USING BTREE ( github_username );

