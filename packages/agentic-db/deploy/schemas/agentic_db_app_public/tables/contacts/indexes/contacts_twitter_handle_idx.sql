-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_twitter_handle_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/twitter_handle/column
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_relationship_type_idx


CREATE INDEX contacts_twitter_handle_idx ON agentic_db_app_public.contacts USING BTREE ( twitter_handle );

