-- Verify: schemas/agent_db_app_public/tables/attachments/indexes/attachments_attachable_type_idx


SELECT verify_index('agent_db_app_public.attachments', 'attachments_attachable_type_idx');


