-- Verify: schemas/agent_db_app_public/tables/feedback/indexes/feedbacks_target_id_idx


SELECT verify_index('agent_db_app_public.feedback', 'feedbacks_target_id_idx');


