-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_from_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/from_contact_id/column


CREATE INDEX emails_from_contact_id_idx ON agentic_db_app_public.emails USING BTREE ( from_contact_id );

