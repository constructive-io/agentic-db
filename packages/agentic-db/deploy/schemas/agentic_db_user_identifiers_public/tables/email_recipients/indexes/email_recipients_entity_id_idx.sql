-- Deploy: schemas/agentic_db_user_identifiers_public/tables/email_recipients/indexes/email_recipients_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/email_recipients/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/thread_participants/policies/auth_del_entity_membership/policy


CREATE INDEX email_recipients_entity_id_idx ON agentic_db_user_identifiers_public.email_recipients USING BTREE ( entity_id );

