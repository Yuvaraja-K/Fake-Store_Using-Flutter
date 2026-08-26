BEGIN;
INSERT INTO public.artifact_migration_flow_test (label) VALUES ('artifact-flow-test');
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM public.artifact_migration_flow_test WHERE label = 'artifact-flow-test'
  ) THEN
    RAISE EXCEPTION 'artifact_migration_flow_test insert failed';
  END IF;
END
$$;
ROLLBACK;
