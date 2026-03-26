-- Seed the Golden User
INSERT INTO agentic_db_users_public.users (id, username, display_name, type) 
VALUES ('019d268c-ac74-7c84-bd45-a5a585a9f05f', 'agent', 'Agent', 1) ON CONFLICT DO NOTHING;

-- Seed the Golden Agent
INSERT INTO agentic_db_app_public.agents (id, entity_id, name) 
VALUES ('00000000-0000-0000-0000-000000000001', '019d268c-ac74-7c84-bd45-a5a585a9f05f', 'Golden Agent') ON CONFLICT DO NOTHING;

-- Connect dblink to avengers
CREATE EXTENSION IF NOT EXISTS dblink;
SELECT dblink_connect('avengers_conn', 'dbname=avengers user=postgres password=password host=localhost');

-- Migrate Skills
INSERT INTO agentic_db_app_public.skills (id, entity_id, agent_id, name, description, script, is_active, created_at, updated_at)
SELECT id, '019d268c-ac74-7c84-bd45-a5a585a9f05f', '00000000-0000-0000-0000-000000000001', name, description, script, is_active, created_at, updated_at
FROM dblink('avengers_conn', 'SELECT id, name, description, script, is_active, created_at, updated_at FROM agent.skills') 
AS t(id uuid, name text, description text, script text, is_active boolean, created_at timestamptz, updated_at timestamptz)
ON CONFLICT DO NOTHING;

-- Migrate Rules
INSERT INTO agentic_db_app_public.rules (id, entity_id, agent_id, name, description, trigger_config, action_config, is_active, created_at, updated_at)
SELECT id, '019d268c-ac74-7c84-bd45-a5a585a9f05f', '00000000-0000-0000-0000-000000000001', name, description, trigger_config, action_config, is_active, created_at, updated_at
FROM dblink('avengers_conn', 'SELECT id, name, description, trigger_config, action_config, is_active, created_at, updated_at FROM agent.rules') 
AS t(id uuid, name text, description text, trigger_config jsonb, action_config jsonb, is_active boolean, created_at timestamptz, updated_at timestamptz)
ON CONFLICT DO NOTHING;

-- Migrate Tools
INSERT INTO agentic_db_app_public.tool_definitions (id, entity_id, name, description, input_schema, output_schema, created_at, updated_at)
SELECT id, '019d268c-ac74-7c84-bd45-a5a585a9f05f', name, description, config, '{}'::jsonb, created_at, updated_at
FROM dblink('avengers_conn', 'SELECT id, name, description, config, created_at, updated_at FROM agent.tools') 
AS t(id uuid, name text, description text, config jsonb, created_at timestamptz, updated_at timestamptz)
ON CONFLICT DO NOTHING;

-- Close connection
SELECT dblink_disconnect('avengers_conn');
