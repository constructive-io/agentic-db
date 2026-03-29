-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_sent_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/sent_at/column
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE INDEX emails_sent_at_idx ON agentic_db_app_public.emails USING BTREE ( sent_at );

