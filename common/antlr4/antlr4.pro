TEMPLATE = lib
CONFIG += staticlib
#CONFIG += dll

DEFINES += ANTLR4CPP_STATIC

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/antlr4-cpp-runtime-4.10.1

DESTDIR = $$PWD

HEADERS += \
    $$PWD/javacommons.antlr4.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRErrorListener.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRErrorStrategy.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRFileStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRInputStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/BailErrorStrategy.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/BaseErrorListener.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/BufferedTokenStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/CharStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/CommonToken.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/CommonTokenFactory.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/CommonTokenStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ConsoleErrorListener.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/DefaultErrorStrategy.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/DiagnosticErrorListener.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/Exceptions.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/FailedPredicateException.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/InputMismatchException.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/IntStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/InterpreterRuleContext.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/Lexer.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/LexerInterpreter.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/LexerNoViableAltException.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ListTokenSource.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/NoViableAltException.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/Parser.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ParserInterpreter.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ParserRuleContext.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/ProxyErrorListener.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/RecognitionException.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/Recognizer.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/RuleContext.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/RuleContextWithAltNum.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/RuntimeMetaData.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/Token.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/TokenFactory.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/TokenSource.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/TokenStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/TokenStreamRewriter.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/UnbufferedCharStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/UnbufferedTokenStream.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/Version.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/Vocabulary.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/WritableToken.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/antlr4-common.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/antlr4-runtime.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATN.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNConfig.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNConfigSet.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNDeserializationOptions.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNDeserializer.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNSimulator.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNStateType.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNType.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ActionTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/AmbiguityInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ArrayPredictionContext.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/AtomTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/BasicBlockStartState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/BasicState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/BlockEndState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/BlockStartState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ContextSensitivityInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/DecisionEventInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/DecisionInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/DecisionState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/EpsilonTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ErrorInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LL1Analyzer.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerATNConfig.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerATNSimulator.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerActionExecutor.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerActionType.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerChannelAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerCustomAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerIndexedCustomAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerModeAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerMoreAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerPopModeAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerPushModeAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerSkipAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerTypeAction.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LookaheadEventInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LoopEndState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/NotSetTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/OrderedATNConfigSet.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ParseInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ParserATNSimulator.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ParserATNSimulatorOptions.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PlusBlockStartState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PlusLoopbackState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PrecedencePredicateTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredicateEvalInfo.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredicateTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContext.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContextCache.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContextMergeCache.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContextMergeCacheOptions.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContextType.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionMode.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ProfilingATNSimulator.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/RangeTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/RuleStartState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/RuleStopState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/RuleTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SemanticContext.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SemanticContextType.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SerializedATNView.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SetTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SingletonPredictionContext.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/StarBlockStartState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/StarLoopEntryState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/StarLoopbackState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/TokensStartState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/Transition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/TransitionType.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/WildcardTransition.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/DFA.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/DFASerializer.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/DFAState.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/LexerDFASerializer.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/InterpreterDataReader.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/Interval.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/IntervalSet.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/MurmurHash.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/Predicate.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Any.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Arrays.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/BitSet.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/CPPUtils.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Casts.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Declarations.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/StringUtils.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Unicode.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Utf8.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/AbstractParseTreeVisitor.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ErrorNode.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ErrorNodeImpl.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/IterativeParseTreeWalker.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTree.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeListener.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeProperty.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeType.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeVisitor.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeWalker.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/TerminalNode.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/TerminalNodeImpl.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/Trees.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/Chunk.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/ParseTreeMatch.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/ParseTreePattern.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/ParseTreePatternMatcher.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/RuleTagToken.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/TagChunk.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/TextChunk.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/TokenTagToken.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPath.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathElement.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathLexer.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathLexerErrorListener.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathRuleAnywhereElement.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathRuleElement.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathTokenAnywhereElement.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathTokenElement.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathWildcardAnywhereElement.h \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathWildcardElement.h \
    javacommons.antlr4.h

SOURCES += \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRErrorListener.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRErrorStrategy.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRFileStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ANTLRInputStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/BailErrorStrategy.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/BaseErrorListener.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/BufferedTokenStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/CharStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/CommonToken.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/CommonTokenFactory.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/CommonTokenStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ConsoleErrorListener.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/DefaultErrorStrategy.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/DiagnosticErrorListener.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/Exceptions.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/FailedPredicateException.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/InputMismatchException.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/IntStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/InterpreterRuleContext.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/Lexer.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/LexerInterpreter.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/LexerNoViableAltException.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ListTokenSource.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/NoViableAltException.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/Parser.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ParserInterpreter.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ParserRuleContext.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/ProxyErrorListener.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/RecognitionException.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/Recognizer.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/RuleContext.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/RuleContextWithAltNum.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/RuntimeMetaData.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/Token.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/TokenSource.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/TokenStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/TokenStreamRewriter.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/UnbufferedCharStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/UnbufferedTokenStream.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/Vocabulary.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/WritableToken.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATN.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNConfig.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNConfigSet.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNDeserializationOptions.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNDeserializer.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNSimulator.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNState.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ATNStateType.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ActionTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/AmbiguityInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ArrayPredictionContext.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/AtomTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ContextSensitivityInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/DecisionEventInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/DecisionInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/DecisionState.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/EpsilonTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ErrorInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LL1Analyzer.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerATNConfig.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerATNSimulator.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerActionExecutor.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerChannelAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerCustomAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerIndexedCustomAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerModeAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerMoreAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerPopModeAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerPushModeAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerSkipAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LexerTypeAction.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/LookaheadEventInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/NotSetTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/OrderedATNConfigSet.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ParseInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ParserATNSimulator.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PrecedencePredicateTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredicateEvalInfo.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredicateTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContext.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContextCache.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionContextMergeCache.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/PredictionMode.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/ProfilingATNSimulator.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/RangeTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/RuleTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SemanticContext.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SetTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/SingletonPredictionContext.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/StarLoopbackState.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/Transition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/TransitionType.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/atn/WildcardTransition.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/DFA.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/DFASerializer.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/DFAState.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/dfa/LexerDFASerializer.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/InterpreterDataReader.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/Interval.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/IntervalSet.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/MurmurHash.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/misc/Predicate.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Any.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Arrays.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/CPPUtils.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/StringUtils.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/support/Utf8.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ErrorNodeImpl.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/IterativeParseTreeWalker.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTree.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeListener.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeVisitor.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/ParseTreeWalker.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/TerminalNodeImpl.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/Trees.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/Chunk.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/ParseTreeMatch.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/ParseTreePattern.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/ParseTreePatternMatcher.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/RuleTagToken.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/TagChunk.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/TextChunk.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/pattern/TokenTagToken.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPath.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathElement.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathLexer.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathLexerErrorListener.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathRuleAnywhereElement.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathRuleElement.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathTokenAnywhereElement.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathTokenElement.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathWildcardAnywhereElement.cpp \
    $$PWD/antlr4-cpp-runtime-4.10.1/tree/xpath/XPathWildcardElement.cpp