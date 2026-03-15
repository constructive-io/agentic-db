-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.billing_subscriptions 
  DISABLE ROW LEVEL SECURITY;


